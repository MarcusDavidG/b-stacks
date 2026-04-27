(define-public (tx-20863 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
