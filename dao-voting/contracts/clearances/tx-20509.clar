(define-public (tx-20509 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
