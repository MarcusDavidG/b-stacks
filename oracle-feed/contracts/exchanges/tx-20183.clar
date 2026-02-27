(define-public (tx-20183 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
