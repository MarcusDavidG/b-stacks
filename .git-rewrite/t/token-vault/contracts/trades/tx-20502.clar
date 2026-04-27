(define-public (tx-20502 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
