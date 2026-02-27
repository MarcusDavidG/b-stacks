(define-public (tx-20446 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
