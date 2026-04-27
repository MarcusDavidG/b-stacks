(define-public (tx-20613 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
