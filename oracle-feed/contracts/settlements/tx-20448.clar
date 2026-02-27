(define-public (tx-20448 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
