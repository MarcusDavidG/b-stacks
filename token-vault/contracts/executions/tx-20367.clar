(define-public (tx-20367 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
