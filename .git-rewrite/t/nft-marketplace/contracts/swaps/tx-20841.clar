(define-public (tx-20841 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
