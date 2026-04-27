(define-public (tx-20571 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
