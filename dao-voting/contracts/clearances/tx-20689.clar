(define-public (tx-20689 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
