(define-public (tx-20714 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
