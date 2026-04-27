(define-public (tx-20363 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
