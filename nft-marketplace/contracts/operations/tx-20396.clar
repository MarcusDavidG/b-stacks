(define-public (tx-20396 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
