(define-public (tx-20614 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
