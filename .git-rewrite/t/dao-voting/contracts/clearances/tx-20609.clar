(define-public (tx-20609 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
