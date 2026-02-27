(define-public (tx-20541 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
