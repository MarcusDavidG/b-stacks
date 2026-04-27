(define-public (tx-20511 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
