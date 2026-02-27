(define-public (tx-20806 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
