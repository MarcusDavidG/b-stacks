(define-public (tx-20447 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
