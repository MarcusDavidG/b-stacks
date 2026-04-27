(define-public (tx-20784 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
