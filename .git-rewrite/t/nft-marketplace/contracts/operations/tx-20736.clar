(define-public (tx-20736 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
