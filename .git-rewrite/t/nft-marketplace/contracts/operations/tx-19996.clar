(define-public (tx-19996 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
