(define-public (tx-20320 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
