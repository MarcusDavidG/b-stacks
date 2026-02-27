(define-public (tx-20096 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
