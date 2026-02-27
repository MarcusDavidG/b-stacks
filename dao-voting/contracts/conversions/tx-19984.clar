(define-public (tx-19984 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
