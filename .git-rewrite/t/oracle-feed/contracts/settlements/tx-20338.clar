(define-public (tx-20338 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
