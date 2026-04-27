(define-public (tx-20372 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
