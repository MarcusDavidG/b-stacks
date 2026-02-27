(define-public (tx-20705 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
