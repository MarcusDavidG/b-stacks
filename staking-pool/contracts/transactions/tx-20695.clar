(define-public (tx-20695 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
