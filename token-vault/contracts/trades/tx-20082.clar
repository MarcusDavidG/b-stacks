(define-public (tx-20082 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
