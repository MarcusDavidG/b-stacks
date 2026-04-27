(define-public (tx-20409 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
