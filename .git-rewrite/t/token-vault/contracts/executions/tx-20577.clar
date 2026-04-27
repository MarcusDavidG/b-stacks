(define-public (tx-20577 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
