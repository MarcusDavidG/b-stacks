(define-public (tx-20424 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
