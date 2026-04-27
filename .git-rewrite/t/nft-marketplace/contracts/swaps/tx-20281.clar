(define-public (tx-20281 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
