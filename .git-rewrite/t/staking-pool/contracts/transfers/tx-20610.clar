(define-public (tx-20610 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
