(define-public (tx-20330 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
