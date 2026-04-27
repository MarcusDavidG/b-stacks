(define-public (tx-20655 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
