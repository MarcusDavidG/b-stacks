(define-public (tx-20420 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
