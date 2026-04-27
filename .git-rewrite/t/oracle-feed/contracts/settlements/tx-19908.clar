(define-public (tx-19908 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
