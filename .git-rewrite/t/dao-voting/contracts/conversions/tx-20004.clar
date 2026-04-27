(define-public (tx-20004 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
