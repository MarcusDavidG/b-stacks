(define-public (tx-20250 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
