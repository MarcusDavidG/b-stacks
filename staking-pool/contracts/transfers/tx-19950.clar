(define-public (tx-19950 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
