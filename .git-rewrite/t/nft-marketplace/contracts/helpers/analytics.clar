;; Analytics Tracking
(define-map trade-volume (string-ascii 10) uint)
(define-public (record-trade (collection (string-ascii 10)) (amount uint))
    (ok (map-set trade-volume collection amount)))
