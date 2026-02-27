(define-public (tx-20858 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
