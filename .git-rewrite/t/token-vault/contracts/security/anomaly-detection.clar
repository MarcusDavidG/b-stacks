(define-public (detect-anomaly (tx-pattern (list 10 uint)))
  (ok (analyze-anomaly tx-pattern)))
