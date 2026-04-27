(define-public (tx-20046 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
