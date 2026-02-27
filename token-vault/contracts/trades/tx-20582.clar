(define-public (tx-20582 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
