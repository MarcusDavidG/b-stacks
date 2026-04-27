(define-public (tx-20126 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
