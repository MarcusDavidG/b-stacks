(define-public (tx-20802 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
