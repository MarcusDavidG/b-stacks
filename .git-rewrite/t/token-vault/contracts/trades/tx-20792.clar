(define-public (tx-20792 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
