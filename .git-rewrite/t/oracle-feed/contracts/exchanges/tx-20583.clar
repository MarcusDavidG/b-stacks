(define-public (tx-20583 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
