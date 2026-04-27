(define-public (tx-20615 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
