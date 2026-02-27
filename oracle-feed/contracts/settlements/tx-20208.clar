(define-public (tx-20208 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
