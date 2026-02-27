(define-public (tx-20315 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
