(define-public (tx-20128 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
