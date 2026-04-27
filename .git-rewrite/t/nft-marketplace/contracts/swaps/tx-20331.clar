(define-public (tx-20331 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
