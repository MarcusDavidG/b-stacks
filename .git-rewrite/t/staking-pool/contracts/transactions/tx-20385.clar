(define-public (tx-20385 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
