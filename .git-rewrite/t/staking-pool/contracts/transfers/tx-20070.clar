(define-public (tx-20070 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
