(define-public (tx-20392 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
