(define-public (tx-20732 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
