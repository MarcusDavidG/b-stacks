(define-public (tx-20481 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
