(define-public (tx-19970 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
