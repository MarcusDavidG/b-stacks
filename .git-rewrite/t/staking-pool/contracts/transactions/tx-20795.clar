(define-public (tx-20795 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
