(define-public (tx-20738 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
