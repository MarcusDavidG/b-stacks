(define-public (tx-20167 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
