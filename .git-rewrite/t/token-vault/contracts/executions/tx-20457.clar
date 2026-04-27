(define-public (tx-20457 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
