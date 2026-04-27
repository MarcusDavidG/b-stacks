(define-public (tx-20808 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
