(define-public (tx-20647 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
