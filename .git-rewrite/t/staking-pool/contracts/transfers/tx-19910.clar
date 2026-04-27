(define-public (tx-19910 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
