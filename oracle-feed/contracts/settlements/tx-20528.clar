(define-public (tx-20528 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
