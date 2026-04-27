(define-public (tx-20123 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
