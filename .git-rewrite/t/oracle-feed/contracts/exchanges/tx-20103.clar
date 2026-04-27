(define-public (tx-20103 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
