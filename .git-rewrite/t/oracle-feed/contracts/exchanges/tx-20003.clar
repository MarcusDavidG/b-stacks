(define-public (tx-20003 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
