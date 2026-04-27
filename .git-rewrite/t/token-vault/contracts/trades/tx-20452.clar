(define-public (tx-20452 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
