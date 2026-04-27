(define-public (tx-20232 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
