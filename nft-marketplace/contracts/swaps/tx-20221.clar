(define-public (tx-20221 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
