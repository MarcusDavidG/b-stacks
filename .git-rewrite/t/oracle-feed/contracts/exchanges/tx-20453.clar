(define-public (tx-20453 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
