(define-public (tx-19936 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
