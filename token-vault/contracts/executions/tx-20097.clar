(define-public (tx-20097 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
