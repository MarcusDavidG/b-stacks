(define-public (tx-20313 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
