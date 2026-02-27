(define-public (tx-20215 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
