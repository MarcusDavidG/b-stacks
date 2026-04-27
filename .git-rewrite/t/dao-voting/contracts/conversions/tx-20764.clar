(define-public (tx-20764 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
