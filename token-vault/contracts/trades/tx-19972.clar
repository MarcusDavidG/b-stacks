(define-public (tx-19972 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
