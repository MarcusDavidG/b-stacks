(define-public (tx-20192 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
