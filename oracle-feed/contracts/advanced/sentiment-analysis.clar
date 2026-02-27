(define-public (analyze-sentiment (asset (string-ascii 10)))
  (ok (get-market-sentiment asset)))
