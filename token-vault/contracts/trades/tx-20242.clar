(define-public (tx-20242 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
