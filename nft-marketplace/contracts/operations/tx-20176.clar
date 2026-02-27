(define-public (tx-20176 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
