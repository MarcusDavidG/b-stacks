(define-public (tx-20019 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
