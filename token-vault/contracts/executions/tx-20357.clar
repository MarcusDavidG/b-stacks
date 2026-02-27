(define-public (tx-20357 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
