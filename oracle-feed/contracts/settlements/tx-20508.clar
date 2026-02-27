(define-public (tx-20508 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
