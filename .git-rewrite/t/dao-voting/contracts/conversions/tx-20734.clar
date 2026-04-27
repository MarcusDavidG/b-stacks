(define-public (tx-20734 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
