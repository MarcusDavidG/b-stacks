(define-public (tx-20434 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
