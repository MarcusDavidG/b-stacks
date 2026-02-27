(define-public (tx-20175 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
