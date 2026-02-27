(define-public (tx-19953 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
