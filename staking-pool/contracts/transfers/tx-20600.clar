(define-public (tx-20600 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
