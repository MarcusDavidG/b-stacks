(define-public (tx-19966 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
