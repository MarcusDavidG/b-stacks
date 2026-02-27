(define-public (tx-20669 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
