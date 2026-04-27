(define-public (tx-20342 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
