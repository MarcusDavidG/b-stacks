(define-public (tx-20850 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
