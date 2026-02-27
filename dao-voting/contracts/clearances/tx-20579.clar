(define-public (tx-20579 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
