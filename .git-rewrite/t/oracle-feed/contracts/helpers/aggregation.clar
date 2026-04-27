;; Multi-Source Aggregation
(define-map source-prices {source: principal, asset: (string-ascii 10)} uint)
(define-public (submit-price (asset (string-ascii 10)) (price uint))
    (ok (map-set source-prices {source: tx-sender, asset: asset} price)))
