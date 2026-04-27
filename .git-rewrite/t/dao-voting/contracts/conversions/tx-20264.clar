(define-public (tx-20264 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
