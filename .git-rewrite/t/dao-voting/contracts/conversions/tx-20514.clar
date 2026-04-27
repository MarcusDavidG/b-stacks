(define-public (tx-20514 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
