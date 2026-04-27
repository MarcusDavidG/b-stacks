(define-public (tx-20117 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
