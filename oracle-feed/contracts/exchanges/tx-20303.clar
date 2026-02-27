(define-public (tx-20303 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
