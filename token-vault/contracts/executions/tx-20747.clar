(define-public (tx-20747 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
