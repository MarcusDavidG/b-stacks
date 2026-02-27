(define-public (tx-19951 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
