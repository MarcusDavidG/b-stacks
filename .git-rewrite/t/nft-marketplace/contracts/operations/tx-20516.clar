(define-public (tx-20516 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
