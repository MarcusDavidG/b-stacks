(define-public (tx-20240 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
