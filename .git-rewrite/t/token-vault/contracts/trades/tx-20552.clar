(define-public (tx-20552 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
