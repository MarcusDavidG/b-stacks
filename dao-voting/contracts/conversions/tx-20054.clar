(define-public (tx-20054 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
