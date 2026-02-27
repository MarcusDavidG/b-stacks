(define-public (tx-19975 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
