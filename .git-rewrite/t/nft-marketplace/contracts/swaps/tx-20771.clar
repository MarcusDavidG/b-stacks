(define-public (tx-20771 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
