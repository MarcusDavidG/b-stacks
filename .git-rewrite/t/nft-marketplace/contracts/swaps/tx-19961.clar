(define-public (tx-19961 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
