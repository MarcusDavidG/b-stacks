(define-public (tx-20490 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
