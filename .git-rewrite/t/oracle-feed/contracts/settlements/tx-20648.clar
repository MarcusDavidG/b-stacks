(define-public (tx-20648 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
