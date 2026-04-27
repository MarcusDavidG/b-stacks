(define-public (tx-20419 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
