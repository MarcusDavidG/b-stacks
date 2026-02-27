(define-public (tx-19905 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
