(define-public (tx-20368 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
