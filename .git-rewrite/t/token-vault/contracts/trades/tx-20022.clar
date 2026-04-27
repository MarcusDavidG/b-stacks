(define-public (tx-20022 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
