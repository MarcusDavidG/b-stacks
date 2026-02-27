(define-public (tx-19976 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
