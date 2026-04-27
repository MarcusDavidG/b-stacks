(define-public (tx-20704 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
