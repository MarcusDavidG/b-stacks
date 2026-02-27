(define-public (tx-20671 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
