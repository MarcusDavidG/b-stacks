(define-public (tx-20333 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
