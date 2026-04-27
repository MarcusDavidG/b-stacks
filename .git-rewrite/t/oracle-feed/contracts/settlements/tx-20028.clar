(define-public (tx-20028 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
