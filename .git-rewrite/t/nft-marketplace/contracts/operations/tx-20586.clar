(define-public (tx-20586 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
