(define-public (tx-20306 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
