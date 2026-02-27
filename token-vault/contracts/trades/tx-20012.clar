(define-public (tx-20012 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
