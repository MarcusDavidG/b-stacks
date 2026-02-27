(define-public (tx-20454 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
