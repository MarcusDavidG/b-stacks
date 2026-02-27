(define-public (tx-20235 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
