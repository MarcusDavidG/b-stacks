(define-public (tx-19915 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
