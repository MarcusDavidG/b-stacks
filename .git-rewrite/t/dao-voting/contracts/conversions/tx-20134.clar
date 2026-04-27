(define-public (tx-20134 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
