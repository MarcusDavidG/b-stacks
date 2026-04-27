(define-public (tx-20444 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
