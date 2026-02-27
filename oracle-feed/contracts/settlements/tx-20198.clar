(define-public (tx-20198 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
