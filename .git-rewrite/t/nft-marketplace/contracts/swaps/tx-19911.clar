(define-public (tx-19911 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
