(define-public (tx-20030 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
