(define-public (tx-20432 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
