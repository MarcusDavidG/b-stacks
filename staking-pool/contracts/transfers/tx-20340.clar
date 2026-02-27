(define-public (tx-20340 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
