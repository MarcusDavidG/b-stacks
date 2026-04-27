(define-public (tx-20032 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
