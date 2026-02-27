(define-public (tx-20383 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
