(define-public (tx-20668 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
