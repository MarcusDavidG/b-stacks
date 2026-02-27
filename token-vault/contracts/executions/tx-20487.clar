(define-public (tx-20487 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
