(define-public (tx-20750 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
