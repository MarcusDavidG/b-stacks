(define-public (tx-19920 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
