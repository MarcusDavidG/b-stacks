(define-public (tx-20343 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
