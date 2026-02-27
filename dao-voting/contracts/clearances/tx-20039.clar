(define-public (tx-20039 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
