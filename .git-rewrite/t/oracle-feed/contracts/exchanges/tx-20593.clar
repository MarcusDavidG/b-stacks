(define-public (tx-20593 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
