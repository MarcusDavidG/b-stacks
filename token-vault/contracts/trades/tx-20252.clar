(define-public (tx-20252 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
