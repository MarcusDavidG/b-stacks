(define-public (tx-20441 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
