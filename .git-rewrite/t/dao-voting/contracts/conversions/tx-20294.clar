(define-public (tx-20294 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
