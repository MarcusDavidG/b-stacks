(define-public (tx-20185 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
