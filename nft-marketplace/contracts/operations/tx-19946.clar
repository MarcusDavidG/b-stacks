(define-public (tx-19946 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
