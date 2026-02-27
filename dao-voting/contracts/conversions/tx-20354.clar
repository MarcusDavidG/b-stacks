(define-public (tx-20354 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
