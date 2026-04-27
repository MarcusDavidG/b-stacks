(define-public (tx-20828 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
