(define-public (tx-20021 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
