(define-public (tx-20757 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
