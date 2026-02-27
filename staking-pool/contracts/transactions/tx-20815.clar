(define-public (tx-20815 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
