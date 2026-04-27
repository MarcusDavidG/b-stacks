(define-public (tx-19974 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
