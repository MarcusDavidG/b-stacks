(define-public (tx-20016 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
