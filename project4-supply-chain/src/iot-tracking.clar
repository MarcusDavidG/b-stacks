;; Advanced Supply Chain Tracking with IoT Integration

(define-constant ERR-INVALID-SENSOR (err u901))
(define-constant ERR-THRESHOLD-EXCEEDED (err u902))

(define-map sensor-data { product-id: uint, sensor-type: (string-ascii 32) } {
  value: uint,
  timestamp: uint,
  location: (string-ascii 64)
})

(define-map quality-thresholds (string-ascii 32) { min: uint, max: uint })

(define-public (record-sensor-data (product-id uint) (sensor-type (string-ascii 32)) (value uint) (location (string-ascii 64)))
  (let ((threshold (map-get? quality-thresholds sensor-type)))
    (match threshold
      limits (asserts! (and (>= value (get min limits)) (<= value (get max limits))) ERR-THRESHOLD-EXCEEDED)
      true)
    (map-set sensor-data { product-id: product-id, sensor-type: sensor-type } {
      value: value,
      timestamp: block-height,
      location: location
    })
    (ok true)))

(define-public (set-quality-threshold (sensor-type (string-ascii 32)) (min-val uint) (max-val uint))
  (begin
    (map-set quality-thresholds sensor-type { min: min-val, max: max-val })
    (ok true)))

(define-read-only (get-sensor-reading (product-id uint) (sensor-type (string-ascii 32)))
  (map-get? sensor-data { product-id: product-id, sensor-type: sensor-type }))