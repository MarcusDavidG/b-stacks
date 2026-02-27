(define-public (tx-20548 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
