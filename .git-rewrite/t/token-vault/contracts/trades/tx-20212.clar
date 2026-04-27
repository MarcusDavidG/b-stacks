(define-public (tx-20212 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
