(define-public (tx-20697 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
