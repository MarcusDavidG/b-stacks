(define-public (tx-20326 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
