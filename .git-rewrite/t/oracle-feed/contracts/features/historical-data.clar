(define-public (get-historical-price (asset (string-ascii 10)) (blocks-ago uint))
  (ok (fetch-historical asset blocks-ago)))
