(define-public (tx-20293 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
