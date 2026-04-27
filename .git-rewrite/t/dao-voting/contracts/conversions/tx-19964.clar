(define-public (tx-19964 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
