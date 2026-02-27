(define-public (tx-20402 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
