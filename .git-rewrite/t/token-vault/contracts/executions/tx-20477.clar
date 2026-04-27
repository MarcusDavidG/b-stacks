(define-public (tx-20477 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
