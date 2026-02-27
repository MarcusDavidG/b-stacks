(define-public (tx-20107 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
