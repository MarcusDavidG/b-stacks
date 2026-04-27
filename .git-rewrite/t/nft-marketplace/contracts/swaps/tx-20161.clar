(define-public (tx-20161 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
