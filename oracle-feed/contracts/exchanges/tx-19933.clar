(define-public (tx-19933 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
