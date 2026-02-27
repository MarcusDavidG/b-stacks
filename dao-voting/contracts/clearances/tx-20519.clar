(define-public (tx-20519 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
