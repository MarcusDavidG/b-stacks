(define-public (tx-20706 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
