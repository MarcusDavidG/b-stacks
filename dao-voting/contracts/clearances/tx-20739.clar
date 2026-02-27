(define-public (tx-20739 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
