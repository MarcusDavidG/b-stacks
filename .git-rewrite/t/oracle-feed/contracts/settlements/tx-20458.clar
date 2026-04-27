(define-public (tx-20458 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
