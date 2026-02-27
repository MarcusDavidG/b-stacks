(define-public (tx-19987 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
