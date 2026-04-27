(define-public (tx-20588 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
