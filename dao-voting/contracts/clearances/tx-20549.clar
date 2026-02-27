(define-public (tx-20549 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
