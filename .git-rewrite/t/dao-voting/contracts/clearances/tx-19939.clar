(define-public (tx-19939 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
