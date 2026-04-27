(define-public (tx-20213 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
