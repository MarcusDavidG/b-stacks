(define-public (tx-20824 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
