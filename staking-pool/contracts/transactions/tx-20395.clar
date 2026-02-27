(define-public (tx-20395 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
