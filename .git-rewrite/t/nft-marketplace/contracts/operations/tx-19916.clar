(define-public (tx-19916 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
