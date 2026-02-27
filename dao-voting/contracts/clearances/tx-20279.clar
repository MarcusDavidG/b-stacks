(define-public (tx-20279 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
