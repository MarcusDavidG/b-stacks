(define-public (tx-19906 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
