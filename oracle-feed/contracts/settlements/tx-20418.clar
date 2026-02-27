(define-public (tx-20418 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
