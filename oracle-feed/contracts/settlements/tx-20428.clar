(define-public (tx-20428 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
