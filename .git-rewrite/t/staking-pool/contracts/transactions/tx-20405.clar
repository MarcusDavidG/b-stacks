(define-public (tx-20405 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
