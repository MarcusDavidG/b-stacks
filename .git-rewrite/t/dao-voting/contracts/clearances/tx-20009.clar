(define-public (tx-20009 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
