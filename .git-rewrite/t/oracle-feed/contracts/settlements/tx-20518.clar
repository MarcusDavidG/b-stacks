(define-public (tx-20518 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
