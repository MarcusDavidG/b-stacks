(define-public (tx-20043 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
