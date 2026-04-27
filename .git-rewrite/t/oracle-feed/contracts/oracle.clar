;; Multi-Source Oracle Feed v2.0
;; Aggregates data from multiple sources with validation and fallbacks

;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INVALID-DATA (err u101))
(define-constant ERR-STALE-DATA (err u102))
(define-constant ERR-INSUFFICIENT-SOURCES (err u103))

;; Data Variables
(define-data-var oracle-paused bool false)
(define-data-var min-sources uint u3)
(define-data-var max-deviation uint u500) ;; 5% max deviation
(define-data-var heartbeat-interval uint u3600) ;; 1 hour

;; Data Maps
(define-map price-feeds {asset: (string-ascii 20)} {
    price: uint,
    timestamp: uint,
    sources: (list 10 principal),
    confidence: uint,
    deviation: uint
})

(define-map oracle-sources principal {
    active: bool,
    reputation: uint,
    last-update: uint,
    total-updates: uint
})

(define-map feed-history {asset: (string-ascii 20), timestamp: uint} {
    price: uint,
    volume: uint,
    source-count: uint
})