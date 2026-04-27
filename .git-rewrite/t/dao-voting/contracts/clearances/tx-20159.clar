(define-public (tx-20159 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
