(define-public (tx-20076 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
