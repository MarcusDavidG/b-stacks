(define-public (tx-20352 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
