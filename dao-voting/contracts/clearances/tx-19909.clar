(define-public (tx-19909 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
