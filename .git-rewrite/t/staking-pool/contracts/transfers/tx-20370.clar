(define-public (tx-20370 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
