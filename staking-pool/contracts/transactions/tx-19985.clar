(define-public (tx-19985 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
