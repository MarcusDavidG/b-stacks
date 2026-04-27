(define-public (tx-20781 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
