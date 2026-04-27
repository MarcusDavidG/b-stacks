(define-public (tx-20503 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
