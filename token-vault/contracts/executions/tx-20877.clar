(define-public (tx-20877 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
