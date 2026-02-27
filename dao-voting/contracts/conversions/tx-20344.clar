(define-public (tx-20344 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
