(define-public (tx-20603 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
