(define-public (tx-20319 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
