(define-public (tx-20365 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
