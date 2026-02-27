(define-public (tx-20463 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
