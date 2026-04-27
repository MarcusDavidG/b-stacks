(define-public (tx-20224 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
