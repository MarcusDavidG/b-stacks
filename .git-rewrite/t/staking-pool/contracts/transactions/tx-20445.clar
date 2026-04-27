(define-public (tx-20445 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
