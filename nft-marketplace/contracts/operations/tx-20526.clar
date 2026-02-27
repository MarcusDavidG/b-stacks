(define-public (tx-20526 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
