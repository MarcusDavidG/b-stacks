(define-public (tx-20462 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
