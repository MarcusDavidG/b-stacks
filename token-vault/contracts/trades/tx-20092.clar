(define-public (tx-20092 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
