(define-public (tx-20773 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
