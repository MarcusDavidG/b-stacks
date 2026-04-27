(define-public (tx-20114 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
