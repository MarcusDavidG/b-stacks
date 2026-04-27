(define-public (tx-20219 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
