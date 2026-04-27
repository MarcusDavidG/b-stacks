(define-public (tx-20469 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
