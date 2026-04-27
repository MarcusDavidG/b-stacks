(define-public (tx-20707 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
