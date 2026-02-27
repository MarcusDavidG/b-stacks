(define-public (tx-20251 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
