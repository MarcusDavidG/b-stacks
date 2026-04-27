(define-public (tx-20332 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
