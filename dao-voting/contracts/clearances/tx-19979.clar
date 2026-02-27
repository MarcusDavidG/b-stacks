(define-public (tx-19979 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
