(define-public (tx-20619 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
