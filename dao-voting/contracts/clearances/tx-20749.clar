(define-public (tx-20749 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
