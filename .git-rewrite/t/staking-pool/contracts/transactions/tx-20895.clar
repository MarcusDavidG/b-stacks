(define-public (tx-20895 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
