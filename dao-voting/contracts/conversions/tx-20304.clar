(define-public (tx-20304 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
