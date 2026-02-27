(define-public (tx-20275 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
