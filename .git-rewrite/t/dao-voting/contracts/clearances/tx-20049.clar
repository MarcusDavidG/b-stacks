(define-public (tx-20049 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
