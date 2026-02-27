(define-public (tx-20206 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
