(define-public (tx-20265 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
