(define-public (tx-20692 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
