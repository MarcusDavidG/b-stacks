(define-public (tx-20608 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
