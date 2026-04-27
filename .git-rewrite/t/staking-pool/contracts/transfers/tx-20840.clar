(define-public (tx-20840 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
