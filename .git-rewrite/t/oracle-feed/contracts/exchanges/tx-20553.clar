(define-public (tx-20553 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
