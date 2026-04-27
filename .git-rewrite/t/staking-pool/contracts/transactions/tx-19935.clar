(define-public (tx-19935 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
