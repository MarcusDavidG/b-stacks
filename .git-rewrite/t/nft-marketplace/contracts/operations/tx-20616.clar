(define-public (tx-20616 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
