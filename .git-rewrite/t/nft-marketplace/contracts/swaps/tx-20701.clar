(define-public (tx-20701 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
