(define-public (tx-20147 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
