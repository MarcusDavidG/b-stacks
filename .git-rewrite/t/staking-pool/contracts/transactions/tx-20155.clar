(define-public (tx-20155 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
