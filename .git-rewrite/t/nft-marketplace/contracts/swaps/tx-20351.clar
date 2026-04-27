(define-public (tx-20351 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
