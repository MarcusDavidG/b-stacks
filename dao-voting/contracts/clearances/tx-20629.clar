(define-public (tx-20629 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
