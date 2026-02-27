(define-public (tx-20079 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
