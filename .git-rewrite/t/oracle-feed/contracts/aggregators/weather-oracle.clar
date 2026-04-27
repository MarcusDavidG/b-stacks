;; Weather Data Oracle Feed
;; Provides weather data for agricultural and insurance applications

;; Constants
(define-constant ERR-INVALID-LOCATION (err u700))
(define-constant ERR-STALE-WEATHER-DATA (err u701))

;; Data Maps
(define-map weather-data {location: (string-ascii 50)} {
    temperature: int,
    humidity: uint,
    precipitation: uint,
    wind-speed: uint,
    pressure: uint,
    timestamp: uint,
    source: principal
})

(define-map weather-alerts {location: (string-ascii 50), alert-type: (string-ascii 30)} {
    severity: uint,
    issued-at: uint,
    expires-at: uint,
    description: (string-ascii 200),
    active: bool
})

(define-map agricultural-indices {location: (string-ascii 50)} {
    growing-degree-days: uint,
    drought-index: uint,
    frost-risk: uint,
    harvest-readiness: uint,
    last-updated: uint
})

;; Update weather data
(define-public (update-weather (location (string-ascii 50)) (temp int) (humidity uint) (precipitation uint) (wind uint) (pressure uint))
    (begin
        (map-set weather-data {location: location} {
            temperature: temp,
            humidity: humidity,
            precipitation: precipitation,
            wind-speed: wind,
            pressure: pressure,
            timestamp: block-height,
            source: tx-sender
        })
        (update-agricultural-indices location temp precipitation)
        (check-weather-alerts location temp precipitation wind)
        (ok true)))

;; Update agricultural indices based on weather
(define-private (update-agricultural-indices (location (string-ascii 50)) (temp int) (precipitation uint))
    (let ((gdd (calculate-growing-degree-days temp))
          (drought (calculate-drought-index precipitation))
          (frost (calculate-frost-risk temp)))
        (map-set agricultural-indices {location: location} {
            growing-degree-days: gdd,
            drought-index: drought,
            frost-risk: frost,
            harvest-readiness: (calculate-harvest-readiness gdd drought),
            last-updated: block-height
        })
        (ok true)))

;; Calculate growing degree days
(define-read-only (calculate-growing-degree-days (temp int))
    (if (> temp 10) ;; Base temperature 10°C
        (to-uint (- temp 10))
        u0))

;; Calculate drought index
(define-read-only (calculate-drought-index (precipitation uint))
    (if (< precipitation u10) ;; Less than 10mm
        u100 ;; High drought risk
        (if (< precipitation u50)
            u50  ;; Medium drought risk
            u10))) ;; Low drought risk

;; Calculate frost risk
(define-read-only (calculate-frost-risk (temp int))
    (if (< temp 0)
        u100 ;; High frost risk
        (if (< temp 5)
            u50  ;; Medium frost risk
            u0))) ;; No frost risk

;; Calculate harvest readiness
(define-read-only (calculate-harvest-readiness (gdd uint) (drought uint))
    (if (and (> gdd u1000) (< drought u50))
        u100 ;; Ready for harvest
        u0))   ;; Not ready

;; Check and create weather alerts
(define-private (check-weather-alerts (location (string-ascii 50)) (temp int) (precipitation uint) (wind uint))
    (begin
        ;; Check for extreme temperature
        (if (or (< temp -20) (> temp 45))
            (create-weather-alert location "extreme-temperature" u3)
            (ok true))
        ;; Check for heavy precipitation
        (if (> precipitation u100)
            (create-weather-alert location "heavy-rain" u2)
            (ok true))
        ;; Check for high winds
        (if (> wind u80)
            (create-weather-alert location "high-winds" u2)
            (ok true))))

;; Create weather alert
(define-private (create-weather-alert (location (string-ascii 50)) (alert-type (string-ascii 30)) (severity uint))
    (map-set weather-alerts {location: location, alert-type: alert-type} {
        severity: severity,
        issued-at: block-height,
        expires-at: (+ block-height u144), ;; 24 hours
        description: "Weather alert issued",
        active: true
    }))
