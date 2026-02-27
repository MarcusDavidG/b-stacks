(define-public (tx-20001 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
