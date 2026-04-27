(define-public (tx-20811 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
