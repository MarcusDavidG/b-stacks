(define-public (tx-20544 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
