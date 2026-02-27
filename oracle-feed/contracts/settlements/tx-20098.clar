(define-public (tx-20098 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
