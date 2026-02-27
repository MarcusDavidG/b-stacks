(define-public (tx-20299 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
