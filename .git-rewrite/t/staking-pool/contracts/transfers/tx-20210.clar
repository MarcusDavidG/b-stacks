(define-public (tx-20210 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
