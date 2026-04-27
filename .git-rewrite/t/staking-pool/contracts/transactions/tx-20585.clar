(define-public (tx-20585 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
