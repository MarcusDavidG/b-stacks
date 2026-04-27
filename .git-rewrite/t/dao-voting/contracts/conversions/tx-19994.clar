(define-public (tx-19994 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
