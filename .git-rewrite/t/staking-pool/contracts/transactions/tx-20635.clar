(define-public (tx-20635 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
