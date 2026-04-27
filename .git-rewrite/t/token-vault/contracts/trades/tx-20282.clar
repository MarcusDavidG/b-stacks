(define-public (tx-20282 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
