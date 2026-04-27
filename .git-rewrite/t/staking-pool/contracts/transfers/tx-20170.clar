(define-public (tx-20170 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
