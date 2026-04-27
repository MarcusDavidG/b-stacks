(define-public (tx-20556 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
