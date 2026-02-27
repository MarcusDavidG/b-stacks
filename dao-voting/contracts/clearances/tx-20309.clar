(define-public (tx-20309 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
