(define-public (tx-20314 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
