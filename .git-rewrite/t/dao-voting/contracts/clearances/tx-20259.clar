(define-public (tx-20259 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
