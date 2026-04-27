(define-public (get-twap (asset (string-ascii 10)) (window uint))
  (ok (calculate-twap asset window)))