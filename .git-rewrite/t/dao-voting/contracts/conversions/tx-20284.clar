(define-public (tx-20284 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
