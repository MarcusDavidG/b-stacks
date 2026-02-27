(define-public (tx-20355 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
