(define-public (tx-20496 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
