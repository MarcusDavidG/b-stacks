(define-public (tx-20122 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
