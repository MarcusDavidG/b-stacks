(define-public (tx-20063 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
