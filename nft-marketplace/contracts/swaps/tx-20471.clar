(define-public (tx-20471 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
