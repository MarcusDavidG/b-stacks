(define-public (tx-20656 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
