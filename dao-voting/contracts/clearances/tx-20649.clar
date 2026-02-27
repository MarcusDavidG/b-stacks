(define-public (tx-20649 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
