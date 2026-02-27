(define-public (tx-20717 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
