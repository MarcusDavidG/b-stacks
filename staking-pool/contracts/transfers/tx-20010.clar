(define-public (tx-20010 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
