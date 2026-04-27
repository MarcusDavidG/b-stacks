(define-public (tx-20716 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
