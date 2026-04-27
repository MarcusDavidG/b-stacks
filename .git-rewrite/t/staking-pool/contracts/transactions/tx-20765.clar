(define-public (tx-20765 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
