(define-public (tx-20653 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
