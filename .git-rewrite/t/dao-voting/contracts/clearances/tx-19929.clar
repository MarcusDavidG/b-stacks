(define-public (tx-19929 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
