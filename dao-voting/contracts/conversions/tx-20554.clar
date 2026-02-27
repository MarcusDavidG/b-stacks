(define-public (tx-20554 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
