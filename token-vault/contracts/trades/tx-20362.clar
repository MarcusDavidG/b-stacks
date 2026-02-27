(define-public (tx-20362 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
