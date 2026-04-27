(define-public (tx-20875 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
