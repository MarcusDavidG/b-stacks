(define-public (tx-20411 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
