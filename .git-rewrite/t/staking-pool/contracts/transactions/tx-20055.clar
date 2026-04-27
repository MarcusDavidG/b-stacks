(define-public (tx-20055 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
