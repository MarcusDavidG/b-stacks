(define-public (tx-20184 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
