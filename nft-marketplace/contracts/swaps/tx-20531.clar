(define-public (tx-20531 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
