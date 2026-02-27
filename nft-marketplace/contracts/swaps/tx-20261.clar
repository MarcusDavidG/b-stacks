(define-public (tx-20261 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
