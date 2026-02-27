(define-public (tx-20100 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
