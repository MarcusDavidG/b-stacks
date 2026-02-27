(define-public (tx-20378 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
