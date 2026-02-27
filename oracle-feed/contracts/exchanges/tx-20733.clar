(define-public (tx-20733 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
