(define-public (tx-20759 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
