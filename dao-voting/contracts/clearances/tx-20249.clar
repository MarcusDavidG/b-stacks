(define-public (tx-20249 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
