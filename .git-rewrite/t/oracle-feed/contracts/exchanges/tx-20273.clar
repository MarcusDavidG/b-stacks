(define-public (tx-20273 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
