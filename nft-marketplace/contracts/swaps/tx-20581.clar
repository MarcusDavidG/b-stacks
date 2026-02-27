(define-public (tx-20581 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
