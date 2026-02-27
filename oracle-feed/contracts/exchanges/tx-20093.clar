(define-public (tx-20093 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
