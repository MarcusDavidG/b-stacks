(define-public (tx-20856 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
