(define-public (tx-20746 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
