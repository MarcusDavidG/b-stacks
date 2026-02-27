(define-public (tx-19923 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
