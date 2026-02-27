(define-public (tx-20663 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
