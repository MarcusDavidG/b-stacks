(define-public (tx-20684 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
