(define-public (set-price-alert (asset (string-ascii 10)) (threshold uint))
  (ok (map-set alerts asset threshold)))
