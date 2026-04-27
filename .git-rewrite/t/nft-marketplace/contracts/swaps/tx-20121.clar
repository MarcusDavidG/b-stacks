(define-public (tx-20121 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
