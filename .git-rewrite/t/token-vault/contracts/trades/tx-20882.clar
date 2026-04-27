(define-public (tx-20882 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
