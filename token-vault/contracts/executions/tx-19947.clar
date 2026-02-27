(define-public (tx-19947 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
