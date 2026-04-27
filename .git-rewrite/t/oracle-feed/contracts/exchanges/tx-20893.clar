(define-public (tx-20893 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
