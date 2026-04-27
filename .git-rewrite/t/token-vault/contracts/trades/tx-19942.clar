(define-public (tx-19942 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
