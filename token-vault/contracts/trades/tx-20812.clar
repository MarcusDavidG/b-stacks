(define-public (tx-20812 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
