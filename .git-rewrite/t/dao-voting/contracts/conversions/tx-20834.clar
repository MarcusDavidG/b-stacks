(define-public (tx-20834 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
