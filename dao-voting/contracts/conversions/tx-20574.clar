(define-public (tx-20574 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
