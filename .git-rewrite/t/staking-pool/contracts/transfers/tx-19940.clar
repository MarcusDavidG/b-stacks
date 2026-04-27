(define-public (tx-19940 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
