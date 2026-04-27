(define-public (tx-20078 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
