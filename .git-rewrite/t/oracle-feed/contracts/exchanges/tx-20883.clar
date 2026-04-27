(define-public (tx-20883 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
