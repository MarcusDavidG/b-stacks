(define-public (tx-20160 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
