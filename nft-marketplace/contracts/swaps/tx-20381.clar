(define-public (tx-20381 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
