(define-public (tx-20305 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
