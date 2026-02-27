(define-public (tx-20862 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
