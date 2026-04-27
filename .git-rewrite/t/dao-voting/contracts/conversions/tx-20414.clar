(define-public (tx-20414 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
