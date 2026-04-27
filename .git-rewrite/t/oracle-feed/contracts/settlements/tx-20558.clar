(define-public (tx-20558 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
