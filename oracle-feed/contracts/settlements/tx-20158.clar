(define-public (tx-20158 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
