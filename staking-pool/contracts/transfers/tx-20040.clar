(define-public (tx-20040 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
