(define-public (tx-20785 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
