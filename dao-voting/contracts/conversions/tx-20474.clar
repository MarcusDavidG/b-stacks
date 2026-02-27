(define-public (tx-20474 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
