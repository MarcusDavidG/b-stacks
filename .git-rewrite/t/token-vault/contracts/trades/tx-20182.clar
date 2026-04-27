(define-public (tx-20182 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
