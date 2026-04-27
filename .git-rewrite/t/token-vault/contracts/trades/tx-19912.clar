(define-public (tx-19912 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
