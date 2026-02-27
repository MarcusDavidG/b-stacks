(define-public (tx-20570 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
