(define-public (tx-20870 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
