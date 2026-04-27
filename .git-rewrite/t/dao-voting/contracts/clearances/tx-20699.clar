(define-public (tx-20699 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
