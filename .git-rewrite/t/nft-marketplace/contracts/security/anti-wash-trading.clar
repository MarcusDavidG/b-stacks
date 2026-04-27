(define-public (detect-wash-trade (tx-id uint))
  (ok (analyze-pattern tx-id)))
