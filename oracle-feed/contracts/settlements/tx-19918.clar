(define-public (tx-19918 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
