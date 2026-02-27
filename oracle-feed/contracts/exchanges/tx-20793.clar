(define-public (tx-20793 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
