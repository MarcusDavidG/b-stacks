(define-public (tx-20194 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
