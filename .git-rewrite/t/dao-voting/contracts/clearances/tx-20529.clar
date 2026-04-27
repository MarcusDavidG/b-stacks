(define-public (tx-20529 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
