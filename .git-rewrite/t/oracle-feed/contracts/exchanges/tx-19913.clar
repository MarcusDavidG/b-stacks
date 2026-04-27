(define-public (tx-19913 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
