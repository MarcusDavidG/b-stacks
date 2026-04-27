(define-public (tx-19941 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
