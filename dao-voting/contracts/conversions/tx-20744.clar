(define-public (tx-20744 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
