(define-public (tx-20008 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
