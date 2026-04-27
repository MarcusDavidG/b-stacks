(define-public (tx-20598 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
