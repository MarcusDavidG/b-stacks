(define-public (tx-20255 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
