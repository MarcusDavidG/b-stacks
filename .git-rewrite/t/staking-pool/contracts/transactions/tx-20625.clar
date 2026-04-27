(define-public (tx-20625 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
