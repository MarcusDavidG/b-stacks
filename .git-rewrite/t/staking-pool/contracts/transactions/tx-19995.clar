(define-public (tx-19995 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
