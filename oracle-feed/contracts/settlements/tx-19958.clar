(define-public (tx-19958 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
