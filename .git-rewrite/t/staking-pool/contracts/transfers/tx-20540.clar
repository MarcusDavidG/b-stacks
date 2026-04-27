(define-public (tx-20540 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
