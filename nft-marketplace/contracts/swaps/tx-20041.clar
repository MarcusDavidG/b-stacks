(define-public (tx-20041 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
