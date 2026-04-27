(define-public (tx-20131 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
