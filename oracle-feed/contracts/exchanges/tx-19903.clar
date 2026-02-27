(define-public (tx-19903 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
