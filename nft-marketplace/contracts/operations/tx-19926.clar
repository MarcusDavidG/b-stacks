(define-public (tx-19926 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
