(define-public (tx-20153 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
