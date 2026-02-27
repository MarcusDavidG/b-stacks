(define-public (tx-20835 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
