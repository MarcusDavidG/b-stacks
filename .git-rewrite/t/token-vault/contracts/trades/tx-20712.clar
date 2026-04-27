(define-public (tx-20712 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
