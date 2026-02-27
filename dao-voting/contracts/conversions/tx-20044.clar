(define-public (tx-20044 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
