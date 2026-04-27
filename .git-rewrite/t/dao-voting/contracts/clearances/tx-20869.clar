(define-public (tx-20869 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
