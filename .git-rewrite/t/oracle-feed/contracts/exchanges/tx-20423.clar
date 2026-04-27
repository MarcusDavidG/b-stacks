(define-public (tx-20423 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
