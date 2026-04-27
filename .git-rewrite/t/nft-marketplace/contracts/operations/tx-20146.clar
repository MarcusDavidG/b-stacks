(define-public (tx-20146 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
