(define-public (tx-20246 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
