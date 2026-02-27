(define-public (tx-20425 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
