(define-public (tx-20228 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
