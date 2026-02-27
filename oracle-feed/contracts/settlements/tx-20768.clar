(define-public (tx-20768 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
