(define-public (tx-20713 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
