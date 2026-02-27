(define-public (tx-20371 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
