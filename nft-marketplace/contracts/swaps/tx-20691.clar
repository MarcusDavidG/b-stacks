(define-public (tx-20691 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
