(define-public (tx-20727 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
