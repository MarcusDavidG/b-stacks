(define-public (tx-20026 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
