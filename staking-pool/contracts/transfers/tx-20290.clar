(define-public (tx-20290 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
