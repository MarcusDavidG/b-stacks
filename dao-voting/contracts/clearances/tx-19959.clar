(define-public (tx-19959 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
