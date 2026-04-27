(define-public (tx-20230 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
