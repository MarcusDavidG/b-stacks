(define-public (tx-20013 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
