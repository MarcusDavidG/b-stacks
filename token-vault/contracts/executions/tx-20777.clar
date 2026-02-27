(define-public (tx-20777 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
