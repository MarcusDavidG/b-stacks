(define-public (tx-20186 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
