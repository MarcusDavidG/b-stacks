(define-public (tx-20861 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
