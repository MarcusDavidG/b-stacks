(define-public (tx-20488 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
