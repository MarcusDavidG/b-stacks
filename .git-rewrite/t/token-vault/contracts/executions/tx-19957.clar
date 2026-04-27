(define-public (tx-19957 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
