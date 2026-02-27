(define-public (tx-20644 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
