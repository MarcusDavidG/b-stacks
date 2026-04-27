(define-public (tx-20298 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
