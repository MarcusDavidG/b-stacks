(define-public (tx-20461 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
