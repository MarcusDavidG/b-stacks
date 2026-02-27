(define-public (tx-20416 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
