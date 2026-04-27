(define-public (tx-19924 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
