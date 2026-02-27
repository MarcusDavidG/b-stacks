(define-public (tx-20132 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
