(define-public (tx-20218 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
