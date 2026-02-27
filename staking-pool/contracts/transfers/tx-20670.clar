(define-public (tx-20670 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
