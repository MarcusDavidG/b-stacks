(define-public (tx-20266 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
