(define-public (tx-20607 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
