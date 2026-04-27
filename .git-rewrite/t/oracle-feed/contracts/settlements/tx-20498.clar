(define-public (tx-20498 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
