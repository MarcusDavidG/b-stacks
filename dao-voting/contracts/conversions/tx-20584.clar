(define-public (tx-20584 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
