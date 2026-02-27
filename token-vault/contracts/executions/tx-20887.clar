(define-public (tx-20887 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
