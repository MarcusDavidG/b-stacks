(define-public (tx-20302 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
