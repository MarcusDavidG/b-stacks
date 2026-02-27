(define-public (tx-20141 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
