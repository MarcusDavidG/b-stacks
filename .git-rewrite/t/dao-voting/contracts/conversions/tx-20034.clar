(define-public (tx-20034 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
