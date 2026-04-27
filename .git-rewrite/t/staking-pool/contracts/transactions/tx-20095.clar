(define-public (tx-20095 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
