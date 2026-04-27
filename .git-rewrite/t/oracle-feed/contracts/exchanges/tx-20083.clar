(define-public (tx-20083 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
