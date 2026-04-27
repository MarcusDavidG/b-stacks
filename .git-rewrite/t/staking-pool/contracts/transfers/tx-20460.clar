(define-public (tx-20460 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
