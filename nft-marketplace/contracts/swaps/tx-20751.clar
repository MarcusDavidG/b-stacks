(define-public (tx-20751 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
