(define-public (tx-20045 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
