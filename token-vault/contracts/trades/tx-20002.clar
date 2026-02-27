(define-public (tx-20002 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
