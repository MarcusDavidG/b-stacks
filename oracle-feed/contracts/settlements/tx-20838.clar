(define-public (tx-20838 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
