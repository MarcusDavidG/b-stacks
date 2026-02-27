(define-public (tx-20596 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
