(define-public (tx-20334 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
