(define-public (tx-20879 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
