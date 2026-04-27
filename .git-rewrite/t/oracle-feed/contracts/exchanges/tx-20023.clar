(define-public (tx-20023 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
