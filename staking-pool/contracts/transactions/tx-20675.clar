(define-public (tx-20675 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
