(define-public (tx-20300 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
