(define-public (tx-20774 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
