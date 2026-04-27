(define-public (tx-19917 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
