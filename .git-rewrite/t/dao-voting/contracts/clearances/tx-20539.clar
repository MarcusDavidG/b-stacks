(define-public (tx-20539 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
