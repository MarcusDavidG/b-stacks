(define-public (tx-20696 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
