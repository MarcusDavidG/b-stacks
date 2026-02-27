(define-public (tx-19934 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
