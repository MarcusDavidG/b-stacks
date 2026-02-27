(define-public (tx-20349 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
