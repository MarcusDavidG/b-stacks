(define-public (tx-20478 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
