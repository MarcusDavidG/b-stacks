(define-public (tx-20068 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
