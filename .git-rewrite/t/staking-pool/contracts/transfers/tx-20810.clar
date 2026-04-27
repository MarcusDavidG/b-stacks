(define-public (tx-20810 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
