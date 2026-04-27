(define-public (tx-20239 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
