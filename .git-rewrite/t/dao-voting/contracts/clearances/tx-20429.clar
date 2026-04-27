(define-public (tx-20429 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
