(define-public (tx-20767 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
