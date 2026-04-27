(define-public (tx-20398 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
