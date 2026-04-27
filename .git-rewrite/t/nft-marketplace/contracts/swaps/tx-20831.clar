(define-public (tx-20831 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
