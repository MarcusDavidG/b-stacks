(define-public (tx-20110 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
