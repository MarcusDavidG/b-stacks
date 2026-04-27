(define-public (tx-19921 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
