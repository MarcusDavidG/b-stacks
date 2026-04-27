(define-public (tx-20337 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
