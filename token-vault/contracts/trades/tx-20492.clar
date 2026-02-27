(define-public (tx-20492 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
