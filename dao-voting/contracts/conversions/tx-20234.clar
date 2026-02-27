(define-public (tx-20234 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
