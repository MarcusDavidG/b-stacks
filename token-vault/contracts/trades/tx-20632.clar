(define-public (tx-20632 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
