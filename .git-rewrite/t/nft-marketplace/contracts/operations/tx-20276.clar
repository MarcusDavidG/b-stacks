(define-public (tx-20276 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
