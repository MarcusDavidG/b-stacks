(define-public (tx-20272 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
