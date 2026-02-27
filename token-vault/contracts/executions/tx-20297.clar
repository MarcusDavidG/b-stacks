(define-public (tx-20297 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
