(define-public (tx-20630 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
