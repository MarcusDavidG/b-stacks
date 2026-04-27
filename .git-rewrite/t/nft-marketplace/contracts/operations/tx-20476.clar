(define-public (tx-20476 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
