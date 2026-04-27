(define-public (tx-20307 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
