(define-public (tx-20274 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
