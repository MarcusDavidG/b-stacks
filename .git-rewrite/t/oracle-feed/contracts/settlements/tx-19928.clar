(define-public (tx-19928 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
