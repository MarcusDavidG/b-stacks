(define-public (tx-19990 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
