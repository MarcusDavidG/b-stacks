(define-public (tx-20323 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
