(define-public (tx-20550 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
