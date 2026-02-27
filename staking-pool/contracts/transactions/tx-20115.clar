(define-public (tx-20115 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
