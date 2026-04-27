(define-public (tx-20536 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
