(define-public (tx-20120 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
