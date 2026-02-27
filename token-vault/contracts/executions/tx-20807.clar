(define-public (tx-20807 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
