(define-public (tx-20312 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
