(define-public (tx-20033 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
