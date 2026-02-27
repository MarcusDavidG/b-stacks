(define-public (tx-20360 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
