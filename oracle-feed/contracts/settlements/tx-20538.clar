(define-public (tx-20538 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
