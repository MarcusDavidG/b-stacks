(define-public (tx-19962 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
