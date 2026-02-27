(define-public (tx-20091 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
