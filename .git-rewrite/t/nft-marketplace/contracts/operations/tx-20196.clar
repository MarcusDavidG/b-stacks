(define-public (tx-20196 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
