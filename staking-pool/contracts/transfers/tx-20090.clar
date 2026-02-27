(define-public (tx-20090 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
