(define-public (tx-19967 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
