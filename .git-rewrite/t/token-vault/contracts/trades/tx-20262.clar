(define-public (tx-20262 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
