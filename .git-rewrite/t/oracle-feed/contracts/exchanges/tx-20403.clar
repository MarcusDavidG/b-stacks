(define-public (tx-20403 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
