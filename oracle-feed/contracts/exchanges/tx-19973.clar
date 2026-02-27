(define-public (tx-19973 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
