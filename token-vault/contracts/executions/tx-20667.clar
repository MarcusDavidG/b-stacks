(define-public (tx-20667 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
