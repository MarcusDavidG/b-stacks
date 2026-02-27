(define-public (tx-20000 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
