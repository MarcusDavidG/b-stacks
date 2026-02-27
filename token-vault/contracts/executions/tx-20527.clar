(define-public (tx-20527 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
