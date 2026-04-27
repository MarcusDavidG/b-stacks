(define-public (tx-20308 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
