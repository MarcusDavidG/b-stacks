(define-public (tx-20604 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
