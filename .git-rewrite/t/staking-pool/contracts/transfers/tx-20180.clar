(define-public (tx-20180 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
