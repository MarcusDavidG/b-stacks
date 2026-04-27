(define-public (tx-20322 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
