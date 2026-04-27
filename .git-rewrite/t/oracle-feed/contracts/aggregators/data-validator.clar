;; Oracle Data Quality Validator
;; Validates data quality and detects anomalies

;; Constants
(define-constant MAX-PRICE-DEVIATION u1000) ;; 10%
(define-constant MIN-UPDATE-FREQUENCY u300) ;; 5 minutes
(define-constant OUTLIER-THRESHOLD u2000) ;; 20%

;; Data Maps
(define-map data-quality-metrics {asset: (string-ascii 20)} {
    accuracy-score: uint,
    reliability-score: uint,
    freshness-score: uint,
    consistency-score: uint,
    last-validation: uint
})

(define-map price-history {asset: (string-ascii 20), block: uint} {
    price: uint,
    source: principal,
    validated: bool
})

;; Validate price data quality
(define-read-only (validate-price-data (asset (string-ascii 20)) (new-price uint) (source principal))
    (let ((historical-prices (get-recent-prices asset u10))
          (avg-price (calculate-average-price historical-prices))
          (deviation (calculate-deviation new-price avg-price)))
        {
            is-valid: (<= deviation MAX-PRICE-DEVIATION),
            deviation: deviation,
            confidence: (calculate-confidence deviation),
            outlier: (> deviation OUTLIER-THRESHOLD)
        }))

;; Calculate price deviation percentage
(define-read-only (calculate-deviation (new-price uint) (reference-price uint))
    (if (is-eq reference-price u0)
        u0
        (let ((diff (if (> new-price reference-price)
                       (- new-price reference-price)
                       (- reference-price new-price))))
            (/ (* diff u10000) reference-price))))

;; Calculate confidence score based on multiple factors
(define-read-only (calculate-confidence (deviation uint))
    (if (<= deviation u100) ;; 1% deviation
        u100 ;; 100% confidence
        (if (<= deviation u500) ;; 5% deviation
            u80  ;; 80% confidence
            (if (<= deviation u1000) ;; 10% deviation
                u60  ;; 60% confidence
                u20)))) ;; 20% confidence for high deviation

;; Get recent prices for analysis
(define-read-only (get-recent-prices (asset (string-ascii 20)) (count uint))
    ;; Implementation would fetch last N prices from price-history map
    (list u100000 u101000 u99500 u100500 u100200)) ;; Mock data
