(define-public (tx-20172 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
