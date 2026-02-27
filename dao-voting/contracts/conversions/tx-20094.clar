(define-public (tx-20094 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
