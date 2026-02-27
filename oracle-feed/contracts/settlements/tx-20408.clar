(define-public (tx-20408 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
