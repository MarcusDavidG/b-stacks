(define-public (tx-20105 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
