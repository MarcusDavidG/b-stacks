(define-public (tx-20735 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
