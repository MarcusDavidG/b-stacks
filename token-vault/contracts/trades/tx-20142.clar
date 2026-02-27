(define-public (tx-20142 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
