;; Price Aggregator
(define-map prices (string-ascii 10) uint)

(define-public (update-price (symbol (string-ascii 10)) (price uint))
    (ok (map-set prices symbol price)))

(define-read-only (get-price (symbol (string-ascii 10)))
    (ok (default-to u0 (map-get? prices symbol))))
