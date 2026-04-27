(define-public (tx-20643 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
