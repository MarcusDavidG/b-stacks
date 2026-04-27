(define-public (tx-20427 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
