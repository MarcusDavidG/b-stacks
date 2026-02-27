(define-public (tx-20464 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
