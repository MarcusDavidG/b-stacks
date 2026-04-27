(define-public (tx-20202 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
