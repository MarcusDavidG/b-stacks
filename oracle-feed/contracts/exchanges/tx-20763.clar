(define-public (tx-20763 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
