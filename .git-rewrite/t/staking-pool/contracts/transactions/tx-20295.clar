(define-public (tx-20295 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
