(define-public (tx-19948 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
