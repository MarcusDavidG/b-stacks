(define-public (tx-20389 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
