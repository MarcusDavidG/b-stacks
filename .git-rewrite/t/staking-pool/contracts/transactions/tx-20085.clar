(define-public (tx-20085 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
