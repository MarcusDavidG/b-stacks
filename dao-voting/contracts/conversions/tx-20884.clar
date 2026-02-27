(define-public (tx-20884 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
