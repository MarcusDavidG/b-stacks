(define-public (check-circuit-breaker (asset (string-ascii 10)))
  (ok (evaluate-breaker asset)))