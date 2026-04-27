(define-public (tx-20798 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
