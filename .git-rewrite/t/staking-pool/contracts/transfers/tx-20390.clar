(define-public (tx-20390 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
