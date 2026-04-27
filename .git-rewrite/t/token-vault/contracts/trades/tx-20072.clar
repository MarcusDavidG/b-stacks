(define-public (tx-20072 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
