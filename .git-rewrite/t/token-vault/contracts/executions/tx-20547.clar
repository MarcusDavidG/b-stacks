(define-public (tx-20547 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
