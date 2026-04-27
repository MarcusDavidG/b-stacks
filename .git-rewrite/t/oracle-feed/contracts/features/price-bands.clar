(define-public (set-price-band (asset (string-ascii 10)) (low uint) (high uint))
  (ok (configure-band asset low high)))