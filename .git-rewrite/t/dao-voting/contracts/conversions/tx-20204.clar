(define-public (tx-20204 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
