(define-public (tx-20156 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
