(define-public (tx-19919 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
