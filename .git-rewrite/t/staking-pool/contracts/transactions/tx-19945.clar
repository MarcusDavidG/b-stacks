(define-public (tx-19945 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
