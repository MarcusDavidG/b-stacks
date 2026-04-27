(define-public (tx-20311 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
