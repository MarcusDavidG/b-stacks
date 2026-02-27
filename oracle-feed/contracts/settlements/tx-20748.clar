(define-public (tx-20748 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
