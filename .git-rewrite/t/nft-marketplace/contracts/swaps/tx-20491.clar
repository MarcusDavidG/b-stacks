(define-public (tx-20491 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
