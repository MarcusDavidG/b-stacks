(define-public (tx-20269 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
