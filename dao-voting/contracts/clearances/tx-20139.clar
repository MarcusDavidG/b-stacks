(define-public (tx-20139 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
