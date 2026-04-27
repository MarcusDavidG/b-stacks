(define-public (tx-20804 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
