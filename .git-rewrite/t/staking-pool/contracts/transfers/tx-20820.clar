(define-public (tx-20820 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
