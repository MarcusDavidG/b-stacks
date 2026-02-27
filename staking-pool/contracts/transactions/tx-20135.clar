(define-public (tx-20135 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
