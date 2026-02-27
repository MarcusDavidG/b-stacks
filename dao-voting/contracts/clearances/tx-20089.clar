(define-public (tx-20089 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
