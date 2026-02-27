(define-public (tx-20724 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
