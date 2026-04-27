(define-public (tx-20014 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
