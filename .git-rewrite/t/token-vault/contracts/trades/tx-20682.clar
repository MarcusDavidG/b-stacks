(define-public (tx-20682 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
