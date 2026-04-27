(define-public (tx-20819 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
