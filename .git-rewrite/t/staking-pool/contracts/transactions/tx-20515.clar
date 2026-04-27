(define-public (tx-20515 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
