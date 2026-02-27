(define-public (tx-19997 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
