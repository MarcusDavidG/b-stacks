(define-public (tx-20317 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
