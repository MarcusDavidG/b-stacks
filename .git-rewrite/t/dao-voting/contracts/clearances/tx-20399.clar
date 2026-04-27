(define-public (tx-20399 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
