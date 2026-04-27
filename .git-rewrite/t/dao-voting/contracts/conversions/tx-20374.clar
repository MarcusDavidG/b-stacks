(define-public (tx-20374 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
