(define-public (tx-20270 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
