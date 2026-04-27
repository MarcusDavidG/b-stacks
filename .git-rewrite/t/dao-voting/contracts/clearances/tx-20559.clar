(define-public (tx-20559 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
