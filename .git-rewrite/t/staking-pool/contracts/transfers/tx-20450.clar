(define-public (tx-20450 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
