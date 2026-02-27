(define-public (tx-20521 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
