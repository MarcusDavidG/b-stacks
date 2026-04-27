(define-public (tx-20560 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
