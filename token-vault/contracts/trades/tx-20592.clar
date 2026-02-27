(define-public (tx-20592 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
