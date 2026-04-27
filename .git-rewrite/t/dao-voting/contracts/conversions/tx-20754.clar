(define-public (tx-20754 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
