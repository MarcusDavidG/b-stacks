(define-public (tx-20868 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
