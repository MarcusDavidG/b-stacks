(define-public (tx-20486 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
