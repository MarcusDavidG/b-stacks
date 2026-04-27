(define-public (tx-20612 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
