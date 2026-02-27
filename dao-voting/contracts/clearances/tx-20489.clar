(define-public (tx-20489 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
