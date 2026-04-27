(define-public (tx-20718 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
