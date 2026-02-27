(define-public (tx-19932 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
