(define-public (tx-20436 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
