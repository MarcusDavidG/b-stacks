(define-public (tx-20380 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
