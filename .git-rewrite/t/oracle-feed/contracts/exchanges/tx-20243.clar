(define-public (tx-20243 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
