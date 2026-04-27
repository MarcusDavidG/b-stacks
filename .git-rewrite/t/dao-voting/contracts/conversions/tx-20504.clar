(define-public (tx-20504 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
