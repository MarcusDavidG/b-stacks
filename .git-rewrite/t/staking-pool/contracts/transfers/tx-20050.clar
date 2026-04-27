(define-public (tx-20050 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
