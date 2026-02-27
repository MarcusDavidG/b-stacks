(define-public (tx-20839 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
